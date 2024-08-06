# .bashrc

# Source organizational environments
if [[ -f /home/share/Environments/users/default.bashrc ]]; then
	source /home/share/Environments/users/default.bashrc
fi

if [[ -d /opt/eda/tools ]]; then
	for env_path in /opt/eda/tools/*/*/*/envs/env.sh; do
		# Extract the directory name of the third star in the glob pattern
		tool_version=$(basename $(dirname $(dirname $env_path)))
		tool_name=$(basename $(dirname $(dirname $(dirname $env_path))))
		if grep -F "${tool_name}" <<< "${tool_version}" >/dev/null 2>/dev/null; then
			# Create an alias by concatenating the directory name with '-ENV'
			# and sourcing the env.sh file
			alias "env-${tool_version,,}"="source $env_path"
		else
			alias "env-${tool_name,,}-${tool_version,,}"="source $env_path"
		fi
	done
fi

if [[ -d /opt/eda/tools/Cadence ]]; then
	# Add an alias for opening the Cadence documentation and skill API finder.
	# Get the latest cadence version, as we'll use it for the documentation.
	latest_cadence="$( \
		fd -td --exact-depth 2 IC /opt/eda/tools/Cadence/ -x stat --format '%Y:%n' \
		| sort -n \
		| tail -1 \
		| cut -d: -f2 \
		)"
	alias "cadence-docs"="(source ${latest_cadence:?}/envs/env.sh; \${CDS}/bin/cda & \${CDS}/bin/cdsFinder &) &"
fi

