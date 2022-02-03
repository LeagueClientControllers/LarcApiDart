import 'package:lcc_api_dart/src/model/teams/team.dart';
import 'package:lcc_api_dart/src/model/general/enums/role.dart';

/// Contains methods of the /team/ API category. 
abstract class ITeamsCategory
{
	/// Creates team and sets its name.
	Future<int> createTeam(String teamName);

	/// Gets user's teams.
	Future<List<Team>> getTeams();

	/// Changes team name.
	Future changeTeamName(int teamId, String teamName);

	/// Deletes team with specific id.
	Future deleteTeam(int teamId);

	/// Adds member in the team.
	Future<int> addTeamMember(int teamId, String memberSummonerId, Role memberRole);

	/// Deletes team member with specific id.
	Future deleteTeamMember(int teamId, int memberId);

	/// Changes role of the member of the team.
	Future changeMemberRole(int teamId, int memberId, Role role);

	/// Sets new leader of the team
	Future changeTeamLeader(int teamId, int newLeaderId);
}
